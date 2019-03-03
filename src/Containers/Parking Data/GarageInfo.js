import React from 'react'

export default function GarageInfo({ name, total_spaces, free_spaces }) {
 return (
   <div>
     <h3>{ name }</h3>
     <p><strong>Total Spaces:</strong> { total_spaces }</p>
     <p><strong>Free Spaces:</strong> { free_spaces }</p>
   </div>
 )
}